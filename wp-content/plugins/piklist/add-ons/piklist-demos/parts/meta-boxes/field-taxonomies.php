<?php
/*
Title: Taxonomies
Post Type: piklist_demo
Order: 20
Priority: default
Context: side
Collapse: true
Tab: All
Flow: Demo Workflow
*/
?>

<p class="piklist-demo-highlight">
  <?php _e('Create your own Taxonomy metabox, and display the terms as a checkbox, radio, select or any field you can imagine.', 'piklist-demo');?>
</p>

<?php

  piklist('field', array(
    'type' => 'checkbox'
    ,'scope' => 'taxonomy'
    ,'field' => 'piklist_demo_type'
    ,'label' => __('Demo Types', 'piklist-demo')
    ,'description' => sprintf(__('Terms will appear when they are added to %1$s the Demo taxonomy %2$s.','piklist-demo'), '<a href="' . network_admin_url() . 'edit-tags.php?taxonomy=piklist_demo_type&post_type=piklist_demo">', '</a>')
    ,'choices' => piklist(
      get_terms('piklist_demo_type', array(
        'hide_empty' => false
      ))
      ,array(
        'term_id'
        ,'name'
      )
    )
  ));

  // Show the path to this file in the Demos
  // DO NOT use this in your own code
  piklist('shared/code-locater', array(
    'location' => __FILE__
    ,'type' => 'Meta Box'
  ));